######################################################################
#<
#
# Function: p6_aws_s3_svc_buckets_list()
#
#>
######################################################################
p6_aws_s3_svc_buckets_list() {

    p6_aws_cmd s3 ls "$@"
}

######################################################################
#<
#
# Function: p6_aws_s3_svc_bucket_list(bucket)
#
#  Args:
#	bucket - 
#
#>
######################################################################
p6_aws_s3_svc_bucket_list() {
    local bucket="$1"

    p6_aws_s3_svc_buckets_list s3://$bucket --recursive --human-readable --summarize
}

######################################################################
#<
#
# Function: p6_aws_s3_svc_bucket_policy()
#
#>
######################################################################
p6_aws_s3_svc_bucket_policy() {

    p6_aws_cmd s3api get-bucket-policy "$@"
}