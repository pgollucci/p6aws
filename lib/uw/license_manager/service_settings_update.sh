p6_aws_license_manager_cross_accounts_discovery() {
    
    cond_log_and_run aws license-manager update-service-settings --enable-cross-accounts-discovery "$@"
}

