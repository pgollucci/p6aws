######################################################################
#<
#
# Function:
#	p6_aws_codebuild_delete_builds_batch(ids)
#
#  Args:
#	ids - 
#
#>
######################################################################
p6_aws_codebuild_delete_builds_batch() {
    local ids="$1"
    shift 1

    p6_run_write_cmd aws codebuild batch-delete-builds --ids $ids "$@"
}