######################################################################
#<
#
# Function:
#      = p6_aws_serverlessrepo_application_version_create(application_id, semantic_version)
#
# Arg(s):
#    application_id - 
#    semantic_version - 
#
#
#>
######################################################################
p6_aws_serverlessrepo_application_version_create() {
    local application_id="$1"
    local semantic_version="$2"
    shift 2

    p6_run_write_cmd aws serverlessrepo create-application-version --application-id $application_id --semantic-version $semantic_version "$@"
}