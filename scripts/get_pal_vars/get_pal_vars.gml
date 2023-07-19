function get_pal_vars(){
	switch pal_selected {
		
		case 0:
			pal_name = "NOIA";
			pal_desc = "A stumpy yet familiar gremlin.";
			break;
		case 1:
			pal_name = "BLOODY";
			pal_desc = "Why you probably shouldn't let\nthis guy near a chainsaw.";
			break;
		case 2:
			pal_name = "CASH MONEY";
			pal_desc = "Oy you!\nShut your mouth and look at my WAD!!";
			break;
		case 3:
			pal_name = "COOL RANCH";
			pal_desc = "Unironically the best Dorito\nflavor.";
			break;
		case 4:
			pal_name = "GRUNCH";
			pal_desc = "And that's the tale of the\nchristmas cretin.";
			break;
		case 5:
			pal_name = "BURNT ENDS";
			pal_desc = "That shit ain't well done,\nthat shit is Congratulations.";
			break;
		case 6:
			pal_name = "SQUAR";
			pal_desc = "Ah hell nah they made Noia evil\nand fucked up";
			break;
		case 7:
			pal_name = "GHOSTLY";
			pal_desc = "What's wrong? It looks like you saw\na ghost!";
			break;
		case 8:
			pal_name = "IN THE NUDE";
			pal_desc = "GOOD GRIEF HES NAKED";
			break;
			
		default:
			pal_name = "NOT YET SET";
			pal_desc = "Palettes yet to be set!";
			break;
	}
}