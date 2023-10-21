#Program for adding new value or udate values Of Already Created HashTable

[hashtable]$hashTabl = @{}
#Write-Output "Current hash table is:" $hashTabl

do{
    $NewKey = Read-Host -Prompt "Enter Key:"
     
    if ($hashTabl.ContainsKey($NewKey)) 
    {
        $OldValue = $hashTabl[$NewKey]
        Write-Output "old values "$OldValue
        #$hashTable.GetEnumerator() | Where-Object {$_.Key -eq $NewKey}
        $Val = Read-Host -prompt "Enter Value:"
        $OldValue += " "+ $Val
        $hashTabl[$NewKey] =$OldValue

        Write-Output "Updated With Values:" $hashTabl
      #  Write-Output "Newly Updated Hashtable is" $hashTabl
    }

    else 
    {
        $NewVal = Read-Host -Prompt "Enter New Value:"
        $hashTabl.Add("$NewKey","$NewVal")
        Write-Output "Newly Updated Hashtable is" $hashTabl
            
    }
    $choice = Read-Host -Prompt "Enter y to continue:"
}while($choice -eq 'y')


