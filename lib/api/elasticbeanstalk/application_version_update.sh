######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_application_version_update(application_name, version_label)
#
# Arg(s):
#    application_name - 
#    version_label - 
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_application_version_update() {
    local application_name="$1"
    local version_label="$2"
    shift 2

    p6_run_write_cmd aws elasticbeanstalk update-application-version --application-name $application_name --version-label $version_label "$@"
}