SELECT database, table, is_leader, total_replicas, active_replicas 
  FROM system.replicas 
 WHERE is_readonly 
    OR is_session_expired 
    OR future_parts > 20 
    OR parts_to_check > 10 
    OR queue_size > 20 
    OR inserts_in_queue > 10 
    OR log_max_index - log_pointer > 10 
    OR total_replicas < 2 
    OR active_replicas < total_replicas;