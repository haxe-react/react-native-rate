package react.native.rate;

@:enum
abstract AndroidMarket(Int){
    var Google=1; // js.Lib.require('react-native-rate').AndroidMarket.Google;
    var Amazon=2; // js.Lib.require('react-native-rate').AndroidMarket.Amazon;
    var Other=3; // js.Lib.require('react-native-rate').AndroidMarket.Other;
}

typedef RateOptions = {
#if android
    ?GooglePackageName:String,
    ?AmazonPackageName:String,
    ?OtherAndroidURL:String,
    ?preferredAndroidMarket:AndroidMarket,
#end
#if ios
    ?AppleAppID:String,
    ?preferInApp:Bool,
    ?openAppStoreIfInAppFails:Bool,
    ?inAppDelay:Int,
#end
    ?fallbackPlatformURL:String,
}

@:jsRequire('react-native-rate','default')
extern class Rate {
    static function rate(options:RateOptions, ?cb:Bool->Void):Void;
}
