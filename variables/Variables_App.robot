*** Variable ***
############################### STAGING ##################################
${REMOTE_URL}    http://localhost:4723/wd/hub	      # URL to appium server
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11.0
${DEVICE_NAME}    Android_Phone
${APP_PACKAGE}    sourcecode.smartrmscondo
${APP_ACTIVITY}   .MainActivity

# ${REMOTE_URL}    http://localhost:4723/wd/hub	      # URL to appium server
# ${PLATFORM_NAME}    Android
# ${PLATFORM_VERSION}    11.0
# ${DEVICE_NAME}    Android_Phone
# ${APP_PACKAGE}    com.AOT.staging
# ${APP_ACTIVITY}   com.AOT.Activities.New.V2_SplashScreenActivity
# sourcecode.smartrmscondo
############################### PREPROD ##################################
# ${REMOTE_URL_PREPROD}    http://localhost:4723/wd/hub	      # URL to appium server
# ${PLATFORM_NAME_PREPROD}    Android
# ${PLATFORM_VERSION_PREPROD}    11.0
# ${DEVICE_NAME_PREPROD}    Android_Phone
# ${APP_PACKAGE_PREPROD}    com.AOT
# ${APP_ACTIVITY_PREPROD}   com.AOT.Activities.New.V2_SplashScreenActivity

# ${timeout}    5s 

############################### iOS ##################################
${REMOTE_URL_iOS}    http://localhost:4724/wd/hub	      # URL to appium server
${PLATFORM_NAME_iOS}    iOS
${PLATFORM_VERSION_iOS}    14.4
${DEVICE_NAME_iOS}    iPhone 11
${APP_LOCATION_iOS}       /Users/kd02/Library/Developer/Xcode/DerivedData/AOT-fhbzcslolfshkkaityzngujpykpl/Build/Products/Debug-iphonesimulator/AOT Staging.app
${BUNDLE_ID_iOS}         com.kdlab.AOT

############################### Locator Common ###############################
${LBL_BUTTONTITLE_LOCATOR}    id=com.AOT.staging:id/buttonTitle
${LBL_BUTTONTITLE_LOCATOR_XPATH}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup
${LBL_BUTTONTITLE_LOCATOR_iOS_TH}    xpath=//XCUIElementTypeButton[@name="ตกลง"]



