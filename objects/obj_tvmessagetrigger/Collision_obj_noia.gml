
    if (ds_list_find_index(global.saveroom, id) == -1)
    {
        for (i = 0; i < array_length(prompt); i ++) {
			queue_message(prompt[i]);	
		}
        ds_list_add(global.saveroom, id)
        instance_destroy()
    }