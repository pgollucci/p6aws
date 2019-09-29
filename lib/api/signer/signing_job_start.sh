######################################################################
#<
#
# Function:
#      = p6_aws_signer_signing_job_start(source, destination)
#
# Arg(s):
#    source - 
#    destination - 
#
#
#>
######################################################################
p6_aws_signer_signing_job_start() {
    local source="$1"
    local destination="$2"
    shift 2

    p6_run_write_cmd aws signer start-signing-job --source $source --destination $destination "$@"
}