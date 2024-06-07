import 'package:flutter_graphql_showcase/utils/urls.dart';
import 'package:graphql/client.dart';

class ApiServices {
  static GraphQLClient getGithubGraphQLClient() {
    final Link link = HttpLink(
      RemoteUrls.baseUrl,
      defaultHeaders: {
        'accept': 'application/json',
        'Content-Type': 'application/json'
      },
    );

    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }

  final GraphQLClient _client = getGithubGraphQLClient();

  Future<QueryResult> fetchFromQuery(
      {required String query, Map<String, dynamic> variable = const {}}) async {
    final QueryOptions options =
        QueryOptions(document: gql(query), variables: variable);
    final QueryResult result = await _client.query(options);

    return result;
  }

  Future<QueryResult> performMutation(
      {required String query, Map<String, dynamic> variable = const {}}) async {
    MutationOptions options =
        MutationOptions(variables: variable, document: gql(query));

    final result = await _client.mutate(options);

    return result;
  }
}
