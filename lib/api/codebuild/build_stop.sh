######################################################################
#<
#
# Function:
#	p6_aws_codebuild_build_stop(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_codebuild_build_stop() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws codebuild stop-build --id $id "$@"
}