p6_aws_appstream_vpc_config() {
    
    cond_log_and_run aws appstream update-fleet --delete-vpc-config "$@"
}

p6_aws_appstream_default_internet_access() {
    
    cond_log_and_run aws appstream update-fleet --enable-default-internet-access "$@"
}

