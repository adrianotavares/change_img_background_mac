# Change Background Script

This project contains a script and configuration files to automatically change the desktop background on a macOS system. The script cycles through a set of images and updates the background at login and at specified intervals.

## Files

- `change_background.sh`: The main script that changes the desktop background.
- `change_background.plist`: The launchd plist file to run the script at login and at specified intervals.
- `logs/standard-out.log`: Log file for standard output.
- `logs/standard-error.err`: Log file for standard error.

## Setup

1. **Clone the repository**:
    ```sh
    git clone <repository-url>
    cd shell
    ``` 

2. **Make the script executable**:
    ```sh
    chmod +x change_background.sh
    ```

3. **Copy the plist file to the LaunchAgents directory**:
    ```sh
    cp change_background.plist ~/Library/LaunchAgents/co.inter.change_background.plist
    ```

4. **Load the plist file**:
    ```sh
    launchctl load ~/Library/LaunchAgents/co.inter.change_background.plist
    ```

5. **Verify that the plist file is loaded**:
    ```sh
    launchctl list | grep co.inter.change_background
    ```

## Script Details

The [change_background.sh](http://_vscodecontentref_/1) script cycles through a set of images named [img_01.png](http://_vscodecontentref_/2), [img_02.png](http://_vscodecontentref_/3), [img_03.png](http://_vscodecontentref_/4), [img_04.png](http://_vscodecontentref_/5), and [img_05.png](http://_vscodecontentref_/6) located in the [shell](http://_vscodecontentref_/7) directory. It keeps track of the current image using a counter stored in [image_counter.txt](http://_vscodecontentref_/8).

## Configuration

The [change_background.plist](http://_vscodecontentref_/9) file is configured to run the script at login and every hour. You can adjust the interval by modifying the `StartInterval` key in the plist file.

## Logs

Standard output and error messages are logged to [standard-out.log](http://_vscodecontentref_/10) and [standard-error.err](http://_vscodecontentref_/11) respectively.

## License

This project is licensed under the MIT License.

---