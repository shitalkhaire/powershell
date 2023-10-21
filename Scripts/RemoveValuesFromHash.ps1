function RemoveStringFromString ([string] $OldValue, [string] $ReqVal)
 {
    
        $SplittedValues = $OldValue.Split(',')
        $Str =""
        foreach($SingleVal in $SplittedValues)
        {
            if ($SingleVal -ne $ReqVal) 
            {
                $Str += " "+$SingleVal
            }
           
        }
#        Write-Output "updated values String is"$Str
#        Write-Output "oldvalue" $OldValue
#        Write-Output "Reqvalue" $ReqVal
   
    return $Str
}
    Write-Host "1. Hashtable Key Deletion"
    Write-Host "2. Hashtable Value removal"
    $OperChoice = Read-Host -Prompt "Choose One Operation from above"
    $hash = @{Numbers = "one,two,three,two"; Fruits = "apple,banana,pear"}
    Write-Output "Current hash" $hash

    if($OperChoice -eq '1')
    {
        $KeyTobeRemove = Read-Host -Prompt "Enter Key for remove"
        $hash.Remove("$KeyTobeRemove")
        Write-Output "After Key Removing" $hash
    }
    else 
    {
       
        $ReqKey = Read-Host -Prompt "Enter Key for search"
    
        if($hash.Keys -contains $ReqKey)
        {
        #  $hash.Remove($ReqVal)
            $OldValue = $hash[$ReqKey]
            $ReqVal = Read-Host -Prompt "Enter value for deletion"

            $UpdatedValues = RemoveStringFromString $OldValue $ReqVal
            $hash[$ReqKey] = $UpdatedValues
        }
        Write-Output "Updated HashTable is" $hash 
    }