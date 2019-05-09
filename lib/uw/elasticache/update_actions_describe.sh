aws_elasticache_node_level_update_status() {
    
    cond_log_and_run aws elasticache describe-update-actions --show-node-level-update-status "$@"
}

