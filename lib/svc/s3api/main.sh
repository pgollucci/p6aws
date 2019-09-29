######################################################################
#<
#
# Function:
#      = p6_aws_s3api_svc_bucket_policy(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_svc_bucket_policy() {
    local bucket="$1"

    p6_aws_s3api_bucket_policy_get "$bucket"
}

######################################################################
#<
#
# Function:
#      = p6_aws_s3api_svc_bucket_objects_versions_list(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_svc_bucket_objects_versions_list() {
    local bucket="$1"

    p6_aws_s3api_object_versions_list \
	$bucket \
	--output text \
	--query "'Versions[].[Key, StorageClass, IsLatest, ETag, LastModified, Owner.ID]'"
}

######################################################################
#<
#
# Function:
#      = p6_aws_s3api_svc_bucket_objects_deleted(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_svc_bucket_objects_deleted() {
    local bucket="$1"

    p6_aws_s3api_object_versions_list \
	$bucket \
	--output text \
	--query "'DeleteMarkers[].[Key, VersionId, IsLatest, LastModified, Owner.ID]'"
}

######################################################################
#<
#
# Function:
#      = p6_aws_s3api_svc_bucket_list_objects_all(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_svc_bucket_list_objects_all() {
    local bucket="$1"

    echo "==========> Objects:"
    p6_aws_s3api_svc_bucket_objects_versions_list "$bucket"

    echo "==========> Deleted:"
    p6_aws_s3api_svc_bucket_objects_deleted "$bucket"
}

######################################################################
#<
#
# Function:
#      = p6_aws_s3api_svc_bucket_delete_with_versioned_objects(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_svc_bucket_delete_with_versioned_objects() {
    local bucket="$1"

    [ -z "$bucket" ] && echo "bucket=[$bucket] is required" && return 1

    local cmd=$(cat <<EOF
import boto3

session = boto3.Session()
s3 = session.resource(service_name='s3')

bucket = s3.Bucket("$bucket")
bucket.object_versions.delete()

bucket.delete()
EOF
)
    python -c $cmd

}