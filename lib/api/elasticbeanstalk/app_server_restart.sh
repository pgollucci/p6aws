p6_aws_elasticbeanstalk_app_server_restart() {

    p6_log_or_run aws elasticbeanstalk restart-app-server "$@"
}
