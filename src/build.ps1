Param(
    [Parameter(Position = 0, ValueFromPipeline = $true)]
	[ValidateNotNullOrEmpty()]
    [System.String]$Version = "v1.17.2.0"
)

docker build ../src -t bamcis/plex:$Version -t bamcis/plex:latest