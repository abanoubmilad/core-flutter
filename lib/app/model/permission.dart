enum Permission { None, Organize, Moderate, Manage }

int _PermissionFromInt(Permission permission) {
  switch (permission) {
    case Permission.Organize:
      return 1;
    case Permission.Moderate:
      return 2;
    case Permission.Manage:
      return 3;
    case Permission.None:
      return 0;
    default:
      return 0;
  }
}

Permission _IntFromPermission(int permission) {
  switch (permission) {
    case 1:
      return Permission.Organize;
    case 2:
      return Permission.Moderate;
    case 3:
      return Permission.Manage;
    case 0:
      return Permission.None;
    default:
      return Permission.None;
  }
}
