######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_job_create(role, settings)
#
# Arg(s):
#    role - 
#    settings - 
#
#
#>
######################################################################
p6_aws_mediaconvert_job_create() {
    local role="$1"
    local settings="$2"
    shift 2

    p6_run_write_cmd aws mediaconvert create-job --role $role --settings $settings "$@"
}