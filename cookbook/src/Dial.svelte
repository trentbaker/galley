<script>
    // constructor params
    const dialSize = 500
    const strokeWidthPercent = 0.3

    const midpoint = (dialSize / 2)
    const strokeWidth = midpoint * strokeWidthPercent

    const radius = midpoint - (strokeWidth / 2) // strokes on path center
    const circumference = 2 * Math.PI * radius

    let progress = circumference
    const incrementProgress = () => progress -= 150
    const decrementProgress = () => progress += 75

    console.log(`radius: ${radius}`)
</script>

<style>
    :global(body) {
        background-color: cornflowerblue;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
        position: relative;
    }
</style>

<svg width="{dialSize}" height="{dialSize}">

    <circle r="{radius}"
            cx="{midpoint}"
            cy="{midpoint}"
            fill="transparent"
            stroke="white"
            stroke-width="{strokeWidth}"
            stroke-dasharray="{circumference}"
            stroke-dashoffset="{progress}"
            transform="rotate(90, {midpoint}, {midpoint})"
    />

    <text
            x="{midpoint}"
            y="{midpoint}"
            text-anchor="middle"
            dominant-baseline="middle"
            font-size="{dialSize / 6}"
            fill="white"
    >{-(progress - circumference)}</text>
</svg>

<button on:click="{decrementProgress}">-</button>
<button on:click="{incrementProgress}">+</button>
