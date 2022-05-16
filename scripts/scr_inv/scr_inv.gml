function invSearch(rootObject,itemType)
{
	for (var i = 0; i < inv_slots; i += 1)
	{
		if (rootObject.inv[i] == itemType)
		{
			return(i);
		}
	}
	return(-1);
}

function invRemove(rootObject,itemType)
{
	var _slot = invSearch(rootObject,itemType);
	if (_slot != -1)
	{
		with (rootObject) inv[_slot] = -1;
		return true;
	}
	else return false;
}

function invAdd(rootObject,itemType) 
{
	var _slot = invSearch(rootObject,-1);
	if (_slot != -1)
	{
		with (rootObject) inv[_slot] = itemType;
		return true;
	}
	else return false;
}

function invSwap(objectFrom,slotFrom,objectTo,slotTo)
{
	var _itemFrom = objectFrom.inv[slotFrom]
	objectFrom.inv[slotFrom] = objectFrom.inv[slotTo];
	objectTo.inv[slotTo] = _itemFrom;
}
