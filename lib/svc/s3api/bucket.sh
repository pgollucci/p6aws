######################################################################
#<
#
# Function: p6_aws_svc_s3api_bucket_policy(bucket)
#
#  Args:
#	bucket -
#
#>
######################################################################
p6_aws_svc_s3api_bucket_policy() {
    local bucket="$1"

    p6_aws_cli_cmd s3api get-bucket-policy "$bucket"
}

######################################################################
#<
#
# Function: p6_aws_svc_s3api_bucket_objects_versions_list(bucket)
#
#  Args:
#	bucket -
#
#>
######################################################################
p6_aws_svc_s3api_bucket_objects_versions_list() {
    local bucket="$1"

    p6_aws_cli_cmd s3api list-object-versions \
        $bucket \
        --output text \
        --query "'Versions[].[Key, StorageClass, IsLatest, ETag, LastModified, Owner.ID]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_s3api_bucket_objects_deleted(bucket)
#
#  Args:
#	bucket -
#
#>
######################################################################
p6_aws_svc_s3api_bucket_objects_deleted() {
    local bucket="$1"

    p6_aws_cli_cmd s3api list-object-versions \
        $bucket \
        --output text \
        --query "'DeleteMarkers[].[Key, VersionId, IsLatest, LastModified, Owner.ID]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_s3api_bucket_list_objects_all(bucket)
#
#  Args:
#	bucket -
#
#>
######################################################################
p6_aws_svc_s3api_bucket_list_objects_all() {
    local bucket="$1"

    p6_h1 "Objects:"
    p6_aws_svc_s3api_bucket_objects_versions_list "$bucket"

    p6_h1 "Deleted:"
    p6_aws_svc_s3api_bucket_objects_deleted "$bucket"
}
