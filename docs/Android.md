# Android

1.  Open up `android/app/src/main/java/[...]/MainActivity.java`

* Add `import vn.agiletech.linesdk.RNLinesdkPackage;` to the imports at the top of the file
* Add `new RNLinesdkPackage()` to the list returned by the `getPackages()` method

2.  Append the following lines to `android/settings.gradle`:
    ```
    include ':react-native-linesdk'
    project(':react-native-linesdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-linesdk/android')
    ```
3.  Insert the following lines inside the dependencies block in `android/app/build.gradle`:
    ```
      compile project(':react-native-linesdk')
    ```
