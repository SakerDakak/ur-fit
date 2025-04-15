abstract class Failure {
  final String message;

  Failure(this.message);
}

// General failures
class ServerFailure extends Failure {
  @override
  final String message;

  ServerFailure(this.message) : super(message);
}

class CacheFailure extends Failure {
  @override
  final String message;

  CacheFailure(this.message) : super(message);
}

class NetworkFailure extends Failure {
  @override
  final String message;

  NetworkFailure(this.message) : super(message);
}
