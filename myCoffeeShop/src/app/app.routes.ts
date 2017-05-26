import { ModuleWithProviders }         from '@angular/core';
import { Routes, RouterModule }        from '@angular/router';
import { UserComponent }               from './user/user.component'
import { HomeComponent }               from './home/home.component';
import { LoginComponent }              from './login/login.component'


const ROUTES: Routes = [
  { path: '', component: HomeComponent },
   //{ path: '', component: HomeComponent}, /*children: [
         //{ path: 'login', component: LoginComponent }]},*/
  { path: 'login', component: LoginComponent},
  { path: 'user/:id', component: UserComponent },
  { path: '**', redirectTo: '' }
];

export const appRoutingProviders: any[] = [

];

//export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);
export const appRoutes = RouterModule.forRoot(ROUTES);