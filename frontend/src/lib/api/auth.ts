import { apiClient } from './client'

export type LoginCredentials = {
  email: string
  password: string
}

export type SignupCredentials = {
  email: string
  password: string
  password_confirmation: string
  name: string
}

export type AuthResponse = {
  user: {
    id: number
    email: string
    name: string
  }
}

export const authApi = {
  async login(credentials: LoginCredentials): Promise<AuthResponse> {
    return apiClient.post<AuthResponse>('/api/auth/login', credentials)
  },

  async signup(credentials: SignupCredentials): Promise<AuthResponse> {
    return apiClient.post<AuthResponse>('/api/auth/signup', credentials)
  },

  async logout(): Promise<void> {
    return apiClient.post('/api/auth/logout', {})
  },

  async getCurrentUser(): Promise<AuthResponse> {
    return apiClient.get<AuthResponse>('/api/auth/me')
  },
} 