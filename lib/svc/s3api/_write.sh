######################################################################
#<
#
# Function: false  = p6_aws_svc_s3api_bucket_delete_with_versioned_objects(bucket)
#
#  Args:
#	bucket -
#
#  Returns:
#	false - 
#	code - rc
#
#>
######################################################################
p6_aws_svc_s3api_bucket_delete_with_versioned_objects() {
    local bucket="$1"

    if p6_string_blank "$bucket"; then
        p6_error "bucket is a required argument"
        p6_return_false
    else
        local cmd=$(
            cat <<EOF
import boto3

session = boto3.Session()
s3 = session.resource(service_name='s3')

bucket = s3.Bucket("$bucket")
bucket.object_versions.delete()

bucket.delete()
EOF
        )
        local rc=$(p6_run_write_cmd "python -c $cmd")

        p6_return_code_as_code "$rc"
    fi
}
