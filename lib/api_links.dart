class ApiLinks {
  static const String server = "http://192.168.1.8/fleet-api";
  static const String images = "$server/upload";

  static const String test = "$server/test.php";

  // ================================ Images ========================= //
  static const String shipImages = "$images/ships";
  static const String shipSVGImages = "$images/ships/svg";
  static const String shipCertImages = "$images/shipcerts";
  static const String crewCertsImages = "$images/crewcerts";

  // ================================= Auth ========================== //

  static const String register = "$server/auth/register.php";
  static const String login = "$server/auth/login.php";
  // static const String verifyregister = "$server/auth/verifycode.php";

  static const String home = "$server/home.php";
  static const String addship = "$server/ships/addship.php";
  static const String shipdetails = "$server/ships/getship.php";
}
