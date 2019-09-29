######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_blob_get(repository_name, blob_id)
#
# Arg(s):
#    repository_name - 
#    blob_id - 
#
#
#>
######################################################################
p6_aws_codecommit_blob_get() {
    local repository_name="$1"
    local blob_id="$2"
    shift 2

    p6_run_read_cmd aws codecommit get-blob --repository-name $repository_name --blob-id $blob_id "$@"
}