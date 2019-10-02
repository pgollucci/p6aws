######################################################################
#<
#
# Function:
#	p6_aws_mediastore_container_describe()
#
#>
######################################################################
p6_aws_mediastore_container_describe() {

    p6_run_read_cmd aws mediastore describe-container "$@"
}