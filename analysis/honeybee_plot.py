"""Plot HoneyBee results."""
# -*- coding: utf-8 -*-
# @Author: AnthonyKenny98
# @Date:   2020-03-31 06:38:20
# @Last Modified by:   AnthonyKenny98
# @Last Modified time: 2020-04-08 18:18:28

from plot import Figure
import csv

FILENAME = 'synth_compare.csv'

COLORS = {
    'grey': '#999999',
    'blue': '#4285F4',
    'green': '#34A853',
    'yellow': '#FBBC05',
    'red': '#EA4335'
}

XLIM = 1000000
YLIM = 7


def read_csv():
    """Read results csv into a dict."""
    data = {}
    with open(FILENAME) as f:
        reader = csv.DictReader(f)
        data = list(reader)
    for row in data:
        row['latency'] = float(row['latency']) / 100.
        row['lut'] = int(row['lut'])
    return data


def plot_swarm(swarm, fig):
    """Scatter all honey bee results."""
    labels = []
    for bee in swarm:
        label = bee['solution'] if bee['solution'] not in labels else None
        labels.append(bee['solution'])
        fig.ax.scatter(
            bee['lut'], bee['latency'],
            label=label,
            s=100,
            color=COLORS[bee['color']])

        fig.ax.annotate(
            bee['iteration'],
            (bee['lut'], bee['latency']),
            xytext=(bee['lut'], bee['latency'] + 0.05),
            fontsize=16)
        return


def plot_benchmark_latency(fig):
    """Plot benchmark latency."""
    fig.ax.hlines(
        y=2.7, xmin=0, xmax=XLIM,
        linewidth=10,
        colors=[COLORS['blue']],
        label="Average Execution Time \n"
              "for Processing 1 Edge for \n"
              "Intel 3.1GHz i7")

def plot_area(fig):
    """Plot benchmark latency."""
    fig.ax.vlines(
        x=274080, ymin=0, ymax=YLIM,
        linewidth=2,
        colors=[COLORS['red']],
        label="Maximum Area Specification")

if __name__ == '__main__':
    swarm = read_csv()

    fig = Figure(
        title='HoneyBee Optimization Iterations',
        subtitle='Comparison of HoneyBee Area and Latency Against '
                 'Benchmark Performance for Processing 1 Edge',
        ylabel=r'Latency ($\mu$seconds)',
        xlabel='Area (# of Look Up Tables)'
    )

    fig.ax.set_xscale('log')

    fig.set_axis_limit(x=(5000, XLIM), y=(0, YLIM))
    fig.ax.tick_params(axis='both', labelsize=18)

    plot_benchmark_latency(fig)
    plot_area(fig)
    plot_swarm(swarm, fig)
    fig.ax.legend(fontsize=16, framealpha=1)
    fig.save("HoneyBeeComparison.png")
