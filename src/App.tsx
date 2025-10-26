import { useState } from 'react';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 to-slate-100">
      <div className="container mx-auto px-4 py-16">
        <div className="max-w-4xl mx-auto">
          <header className="text-center mb-16">
            <h1 className="text-5xl font-bold text-slate-900 mb-4">
              Member Management System
            </h1>
            <p className="text-xl text-slate-600">
              Manage your organization's members efficiently
            </p>
          </header>

          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <div className="text-center">
              <div className="mb-8">
                <div className="inline-flex items-center justify-center w-32 h-32 bg-slate-100 rounded-full mb-4">
                  <span className="text-6xl font-bold text-slate-700">{count}</span>
                </div>
                <p className="text-slate-600 text-lg">Click the button below</p>
              </div>

              <button
                onClick={() => setCount((count) => count + 1)}
                className="bg-slate-900 hover:bg-slate-800 text-white font-semibold py-3 px-8 rounded-lg transition-colors duration-200 shadow-md hover:shadow-lg"
              >
                Increment Counter
              </button>
            </div>
          </div>

          <div className="grid md:grid-cols-3 gap-6">
            <div className="bg-white rounded-lg shadow p-6">
              <div className="text-3xl mb-2">📊</div>
              <h3 className="text-lg font-semibold text-slate-900 mb-2">Analytics</h3>
              <p className="text-slate-600">Track member statistics and growth</p>
            </div>

            <div className="bg-white rounded-lg shadow p-6">
              <div className="text-3xl mb-2">👥</div>
              <h3 className="text-lg font-semibold text-slate-900 mb-2">Members</h3>
              <p className="text-slate-600">Manage member profiles and data</p>
            </div>

            <div className="bg-white rounded-lg shadow p-6">
              <div className="text-3xl mb-2">💰</div>
              <h3 className="text-lg font-semibold text-slate-900 mb-2">Contributions</h3>
              <p className="text-slate-600">Track financial contributions</p>
            </div>
          </div>

          <footer className="text-center mt-16 text-slate-500">
            <p>Ready for deployment on Netlify and Vercel</p>
          </footer>
        </div>
      </div>
    </div>
  );
}

export default App;
