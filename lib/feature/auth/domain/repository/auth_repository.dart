import 'package:flutter_application_1/core/theme/error/failures.dart';
import 'package:fpdart/fpdart.dart';



abstract interface class AuthRepository {
  // abstract class provide base class for other classes to inheret from  
  // abstract interface class provides the list of methods that the class must implement  
  // necessary methods here :
  // signup with email and pass  &&  login with email and pass

  Future<Either <Failures, String>> signUpWithEmailPassword({ // either allows to know the state of sucess or failure
    required String name,
    required String email,
    required String password, 
  }); // this is future because it will fetch the data from supabase

  Future<Either <Failures, String>> loginInWithEmailPassword({ // either allows to know the state of sucess or failure
    required String email,
    required String password, 
  }); // this is future because it will fetch the data from supabase

}