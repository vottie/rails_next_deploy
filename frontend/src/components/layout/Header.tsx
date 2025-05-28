'use client'

import Link from 'next/link'
import { useAuth } from '@/contexts/AuthContext'

export const Header = () => {
  const { user, logout } = useAuth()

  return (
    <header className="bg-white shadow">
      <nav className="container mx-auto px-4 py-4">
        <div className="flex justify-between items-center">
          <Link href="/" className="text-xl font-bold text-gray-800">
            Rails Next Deploy
          </Link>
          <div className="space-x-4">
            {user ? (
              <>
                <Link href="/dashboard" className="text-gray-600 hover:text-gray-900">
                  ダッシュボード
                </Link>
                <button
                  onClick={() => logout()}
                  className="text-gray-600 hover:text-gray-900"
                >
                  ログアウト
                </button>
              </>
            ) : (
              <>
                <Link href="/login" className="text-gray-600 hover:text-gray-900">
                  ログイン
                </Link>
                <Link href="/signup" className="text-gray-600 hover:text-gray-900">
                  新規登録
                </Link>
              </>
            )}
          </div>
        </div>
      </nav>
    </header>
  )
} 