abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();

  dynamic call(Params params);
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();

  dynamic call();
}
