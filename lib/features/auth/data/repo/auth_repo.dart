import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:se7ety/core/service/firebase/failuer/failuer.dart';
import 'package:se7ety/features/auth/data/models/auth_params.dart';

abstract class AuthRepo {
  static Future<Either<Failuer, String>> login({
    required AuthParams params,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: params.email,
            password: params.password,
          );
     if(credential.user?.photoURL == "patient"){
        return const Right("مريض");
      } else if(credential.user?.photoURL == "doctor"){
        return const Right("طبيب");
      }
      return Left(Failuer(message: 'مستخدم غير معروف'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(Failuer(message: 'كلمه المرور ضعيفه'));
      } else if (e.code == 'email-already-in-use') {
        return Left(
          Failuer(message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني'),
        );
      } else {
        return Left(Failuer(message: 'حدث خطأ غير متوقع'));
      }
    } catch (e) {
      return Left(Failuer(message: 'حدث خطأ غير متوقع'));
    }
  }

  static Future<Either<Failuer, Unit>> registerPatient({
    required AuthParams params,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: params.email,
            password: params.password,
          );
      await credential.user?.updateDisplayName(params.name);
      await credential.user?.updatePhotoURL("patient");
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(Failuer(message: 'كلمه المرور ضعيفه'));
      } else if (e.code == 'email-already-in-use') {
        return Left(
          Failuer(message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني'),
        );
      } else {
        return Left(Failuer(message: 'حدث خطأ غير متوقع'));
      }
    } catch (e) {
      return Left(Failuer(message: 'حدث خطأ غير متوقع'));
    }
  }

  static Future<Either<Failuer, Unit>> registerDoctor({
    required AuthParams params,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: params.email,
            password: params.password,
          );
      await credential.user?.updateDisplayName(params.name);
      await credential.user?.updatePhotoURL("doctor");
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(Failuer(message: 'كلمه المرور ضعيفه'));
      } else if (e.code == 'email-already-in-use') {
        return Left(
          Failuer(message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني'),
        );
      } else {
        return Left(Failuer(message: 'حدث خطأ غير متوقع'));
      }
    } catch (e) {
      return Left(Failuer(message: 'حدث خطأ غير متوقع'));
    }
  }
}
