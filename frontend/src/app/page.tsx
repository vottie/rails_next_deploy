import { MainLayout } from '@/components/layout/MainLayout'

export default function Home() {
  return (
    <MainLayout>
      <div className="text-center">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          Rails Next Deploy
        </h1>
        <p className="text-xl text-gray-600 mb-8">
          RailsとNext.jsを使用したモダンなWebアプリケーション
        </p>
        <div className="space-x-4">
          <a
            href="/login"
            className="inline-block bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700 transition-colors"
          >
            ログイン
          </a>
          <a
            href="/signup"
            className="inline-block bg-gray-600 text-white px-6 py-3 rounded-lg hover:bg-gray-700 transition-colors"
          >
            新規登録
          </a>
        </div>
      </div>
    </MainLayout>
  )
}
