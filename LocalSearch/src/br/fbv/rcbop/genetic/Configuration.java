package br.fbv.rcbop.genetic;

public class Configuration implements Comparable<Configuration> {

	private char[]		genotype;
	private int			heuristic;

	/* tres bits representando cada posicao de rainha */
	public static int	GENOTYPE_SIZE;
	public static int	PHENOTYPE_SIZE;

	public Configuration(char[] genotype) {
		this.genotype = genotype;
		calcHeuristic();
	}

	public void swap(int pos1, int pos2) {
		genotype[pos1] ^= genotype[pos2];
		genotype[pos2] ^= genotype[pos1];
		genotype[pos1] ^= genotype[pos2];
	}

	private void calcHeuristic() {
		heuristic = 0;
		int[] phenotype = generatePhenotype();
		for (int i = 0; i < phenotype.length; i++) {
			heuristic += checkDiagonal(phenotype[i], i, phenotype);
		}
		for (int i = 0; i < phenotype.length; i++) {
			heuristic += checkLine(phenotype[i], i, phenotype);
		}
	}

	private int[] generatePhenotype() {
		int[] fenotype = new int[PHENOTYPE_SIZE];
		int index = 0;
		String strGenotype;
		for (int i = 0; i < GENOTYPE_SIZE; i += 3) {
			strGenotype = new String(genotype);
			fenotype[index++] = Integer.parseInt(strGenotype.substring(i, i + 2), 2);
		}
		return fenotype;
	}

	private int checkLine(int x, int y, int[] phenotype) {
		int attQueens = 0;
		for (int i = 0; i < phenotype.length; i++) {
			if ((x != phenotype[i] && y != i) && (x == phenotype[i])) {
				attQueens++;
			}
		}
		return attQueens;
	}

	private int checkDiagonal(int x, int y, int[] phenotype) {
		int attQueens = 0;
		for (int i = 0; i < phenotype.length; i++) {
			if ((x != phenotype[i] && y != i) && (Math.abs(y - i) == Math.abs(x - phenotype[i]))) {
				attQueens++;
			}
		}
		return attQueens;
	}

	public int getHeuristic() {
		return heuristic;
	}

	public int[] getPhenotype() {
		return generatePhenotype();
	}

	public char[] getGenotype() {
		return genotype;
	}

	@Override
	public boolean equals(Object obj) {
		return this.toString().equals(obj.toString());
	}

	@Override
	public int compareTo(Configuration o) {
		return Integer.compare(this.heuristic, o.getHeuristic());
	}

	@Override
	public int hashCode() {
		return toString().hashCode();
	}
}
