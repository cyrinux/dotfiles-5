function mse-build -d "An efficient maven build command"
    set LOG_FILE "/tmp/mse_build_"(date +%Y-%m-%d_%H%M%S)".log"
    echo "Build in progress..."
    spin "mvn -T 1C -Dgwt.compiler.localWorkers=3 -DskipDebianPackaging=true -Dsindbad.profile=dev -DskipJavadoc=true -DargLine="-Xmx2048m" -P dev clean install > $LOG_FILE 2>&1"
    tail $LOG_FILE
end
