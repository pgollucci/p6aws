######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_encrypted(file_share_arn, file_share_arn)
#
# Arg(s):
#    file_share_arn - 
#    file_share_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_encrypted() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --kms-encrypted "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_only(file_share_arn, file_share_arn)
#
# Arg(s):
#    file_share_arn - 
#    file_share_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_only() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --read-only "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_mime_type_enabled(file_share_arn, file_share_arn)
#
# Arg(s):
#    file_share_arn - 
#    file_share_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_mime_type_enabled() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --guess-mime-type-enabled "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_pays(file_share_arn, file_share_arn)
#
# Arg(s):
#    file_share_arn - 
#    file_share_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_pays() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --requester-pays "$@"
}
