# Create-VHDx.ps1
# v0.1
# wwww.jorgebernhardt.com
$preix = 'VHDx-0'
$path = 'L:\Hyper-V\Virtual Hard Disks\'
$count = 5
$size = 50GB
$i=1
Do
{
    $i;
    $pathvhd = $path+$preix+$i+'.vhdx'
    New-VHD -Path $pathvhd `
            -SizeBytes $size `
            -Dynamic `
            -AsJob 
    $i++
}
until ($i -gt $count)