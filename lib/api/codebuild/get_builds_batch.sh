######################################################################
#<
#
# Function:
#      = p6_aws_codebuild_get_builds_batch(ids)
#
# Arg(s):
#    ids - 
#
#
#>
######################################################################
p6_aws_codebuild_get_builds_batch() {
    local ids="$1"
    shift 1

    p6_run_read_cmd aws codebuild batch-get-builds --ids $ids "$@"
}