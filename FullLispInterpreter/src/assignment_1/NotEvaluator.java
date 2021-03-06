package assignment_1;

import main.lisp.evaluator.Environment;
import main.lisp.evaluator.Evaluator;
import main.lisp.parser.terms.NilAtom;
import main.lisp.parser.terms.SExpression;
import main.lisp.parser.terms.TAtom;

public class NotEvaluator implements Evaluator {

	@Override
	public SExpression eval(SExpression expr, Environment environment) {
		// TODO Auto-generated method stub
		if (expr.getTail() instanceof NilAtom | !(expr.getTail().getTail() instanceof NilAtom)) {
//			System.err.println("Missing arguments for operator 'not'");
			throw new IllegalStateException("Missing arguments for operator 'not'");
		}
		
		if(expr.getTail().eval(environment) instanceof NilAtom) {
			return new TAtom();
		} else {
			return new NilAtom();
		}
	}

}
