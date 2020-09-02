extension PrefixX<T> on T {
  String toStringWithPrefix(String prefix, {bool returnPrefixIfNull = false}) {
    if (this == null) {
      if (returnPrefixIfNull) {
        return prefix;
      }
      return null;
    }

    return "$prefix$this";
  }
}
