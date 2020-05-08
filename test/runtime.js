const transpiler = require('./../transpiler');

async function start_runtime() {
	console.log('env');
	console.log(process.env._HANDLER);
	console.log(process.env.sourcecode);
	const handlerClassString = await transpiler.transpile(process.env._HANDLER, process.env.sourcecode);
    console.log(handlerClassString);
    const requireString = "const abap = require('@abaplint/runtime');\n"
	const evalString = 'new (' + handlerClassString + ')().run()';
	const response = eval(requireString + evalString);
	console.log(response);
}

start_runtime();
