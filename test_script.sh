APP_URL="http://16.171.225.38:31659/"

# Function to perform the test
perform_test() {
    echo "Performing test on $APP_URL"
    
    # Make a GET request to your application's endpoint
    response=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)
    
    # Check the HTTP response code
    if [ $response -eq 200 ]; then
        echo "Test passed: Application is reachable."
        exit 0  # Exit with success code
    else
        echo "Test failed: Application is not reachable (HTTP $response)."
        exit 1  # Exit with error code
    fi
}

perform_test  # Call the function to perform the test