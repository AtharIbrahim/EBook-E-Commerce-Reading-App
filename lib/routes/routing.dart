//
//
//
//            Develope By :) Athar Ibrahim Khalid
//
//            Published By :) Athar Ibrahim Khalid
//
//            See More Work On
//                -> Github: https://github.com/AtharIbrahim
//                -> Linkedin: https://www.linkedin.com/in/athar-ibrahim-khalid-0715172a2/
//                -> Dribbble: https://dribbble.com/AtharIbrahim
//

//
// Call Route_String and Nav to their destinations
//
import 'package:e_book_ecommerce/home.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/forgot_pages/forgot_error_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/forgot_pages/forgot_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/forgot_pages/forgot_start_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/forgot_pages/forgot_success_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_in_pages/sign_in_error_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_in_pages/sign_in_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_in_pages/sign_in_start_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_in_pages/sign_in_success_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_up_pages/sign_up_error_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_up_pages/sign_up_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_up_pages/sign_up_start_screen.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/sign_up_pages/sign_up_success_screen.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/add_author_history.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/become_author.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/buy_coins.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/edit_profile.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/followers.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/get_subscription.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/publish_books.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/purchase_history.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/security.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/verify_email.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/verify_email_otp.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/verify_email_success_screen.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/verify_phone.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/verify_phone_otp.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment_pages/verify_phone_success_screen.dart';
import 'package:e_book_ecommerce/presentation/fragments/book_types_fragment/book_case_to_show.dart';
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/author_details_screen.dart';
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/author_history_screen.dart';
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/book_preview_screen.dart';
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/book_review_screens.dart';
import 'package:e_book_ecommerce/presentation/on_boarding_screen/on_board_screen.dart';
import 'package:e_book_ecommerce/presentation/splash_screen/pages/splash_screen.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';

class Routing {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // OnBoarding
      case AfterSplashroute:
        return MaterialPageRoute(
          builder: (context) => const OnBoardScreen(),
        );

      //
      //
      //
      // Signin Start here
      case SignInStartScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignInStartScreen(),
        );
      // Signin
      case SignInScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );
      // Signin Success
      case SignInSuccesssScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignInSuccessScreen(),
        );
      // Signin Error
      case SignInErrorScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignInErrorScreen(),
        );

      //
      //
      //
      // Signup Start
      case SignUpStartScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignUpStartScreen(),
        );
      // Signup
      case SignUpScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      // Signup Success
      case SignUpSuccesssScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignUpSuccessScreen(),
        );
      // Signup Error
      case SignUpErrorScreenroute:
        return MaterialPageRoute(
          builder: (context) => const SignUpErrorScreen(),
        );

      //
      //
      //
      // Forgot Start
      case ForgotStartScreenroute:
        return MaterialPageRoute(
          builder: (context) => const ForgotStartScreen(),
        );
      // Forgot
      case ForgotScreenroute:
        return MaterialPageRoute(
          builder: (context) => const ForgotScreen(),
        );
      // Forgot Success
      case ForgotSuccessScreenroute:
        return MaterialPageRoute(
          builder: (context) => const ForgotSuccessScreen(),
        );
      // Forgot Error
      case ForgotErrorScreenroute:
        return MaterialPageRoute(
          builder: (context) => const ForgotErrorScreen(),
        );

      //
      //
      //
      // Home
      case HomePageroute:
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );

      //
      //
      // Account Fragment
      // Edit Profile
      case EditProfileroute:
        return MaterialPageRoute(
          builder: (context) => const EditProfile(),
        );
      // Security
      case Securityroute:
        return MaterialPageRoute(
          builder: (context) => const Security(),
        );
      // Become Autor
      case BecomeAuthorroute:
        return MaterialPageRoute(
          builder: (context) => const BecomeAuthor(),
        );
      // Publish Books
      case PublishBooksroute:
        return MaterialPageRoute(
          builder: (context) => const PublishBooks(),
        );
      // Add Author History
      case AddAuthorHistoryroute:
        return MaterialPageRoute(
          builder: (context) => const AddAuthorHistory(),
        );
      // Followers
      case Followersroute:
        return MaterialPageRoute(
          builder: (context) => const Followers(),
        );
      // Purchase History
      case PurchaseHistoryroute:
        return MaterialPageRoute(
          builder: (context) => const PurchaseHistory(),
        );
      // Get Subscription
      case GetSubscriptionroute:
        return MaterialPageRoute(
          builder: (context) => const GetSubscription(),
        );
      // Buy Coins
      case BuyCoinsroute:
        return MaterialPageRoute(
          builder: (context) => const BuyCoins(),
        );
      // Verify Email
      case VerifyEmailroute:
        return MaterialPageRoute(
          builder: (context) => const VerifyEmail(),
        );
      // Verify Email OTP
      case VerifyEmailOTProute:
        return MaterialPageRoute(
          builder: (context) => const VerifyEmailOtp(),
        );
      // Verify Email Success
      case VerifyEmailSuccessroute:
        return MaterialPageRoute(
          builder: (context) => const VerifyEmailSuccessScreen(),
        );
      // Verify Password
      case VerifyPhoneroute:
        return MaterialPageRoute(
          builder: (context) => const VerifyPhone(),
        );
      // Verify Password OTP
      case VerifyPhoneOTProute:
        return MaterialPageRoute(
          builder: (context) => const VerifyPhoneOtp(),
        );
      // Verify Password Success
      case VerifyPhoneSuccessroute:
        return MaterialPageRoute(
          builder: (context) => const VerifyPhoneSuccessScreen(),
        );

      //
      //
      // Home Fragment
      // Book Preview
      case BookPreviewroute:
        return MaterialPageRoute(
          builder: (context) => const BookPreviewScreen(),
        );
      // Book Epsiodes
      // case BookEpisoderoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const BookEpisodesScreen(),
      //   );
      // Read By Episode
      // case ReadByEpisoderoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const ReadByEpisode(),
      //   );
      // Author History
      case AuthorHistoryroute:
        return MaterialPageRoute(
          builder: (context) => const AuthorHistoryScreen(),
        );
      // Book Reviews
      case BookReviewsroute:
        return MaterialPageRoute(
          builder: (context) => const BookReviewScreens(),
        );
      // Author Details
      case AuthorDetailsroute:
        return MaterialPageRoute(
          builder: (context) => const AuthorDetailsScreen(),
        );

      //
      //
      // Category Fragment
      // Book Case To Show
      case BookCaseToShowroute:
        return MaterialPageRoute(
          builder: (context) => const BookCaseToShow(),
        );

      //
      //
      //
      // Default
      default:
        // Splash Screen
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
