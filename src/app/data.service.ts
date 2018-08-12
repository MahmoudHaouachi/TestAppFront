import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';
import { AppConfigService } from './app-config.service';


import { Customer } from './customer';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  private headers = new Headers({'Content-Type': 'application/json'});

  constructor(private http: Http, private appConfigService : AppConfigService) {}
    public data = this.appConfigService.getConfig();

    public customersUrl = 'http://'+JSON.parse(this.data["_body"])["serverURL"];

  // Get all customers
  getCustomers(): Promise<Customer[]> {
  

    return this.http.get(this.customersUrl+'/customer')
      .toPromise()
      .then(response => response.json() as Customer[])
      .catch(this.handleError);
  }

  getCustomersByLastName(lastName: string): Promise<Customer[]> {
    const url = `${this.customersUrl}/findbylastname/${lastName}`;
    return this.http.get(url)
      .toPromise()
      .then(response => response.json() as Customer)
      .catch(this.handleError);
  }

  create(customer: Customer): Promise<Customer> {
    return this.http
      .post(this.customersUrl+'/postcustomer', JSON.stringify(customer), {headers : this.headers})
      .toPromise()
      .then(res => res.json() as Customer)
      .catch(this.handleError);
  }

  delete(id: number): Promise<void> {
    const url = `${this.customersUrl}/customer/${id}`;
    return this.http.delete(url, {headers: this.headers})
      .toPromise()
      .then(() => null)
      .catch(this.handleError);
  }

  private handleError(error: any): Promise<any> {
    console.error('Error', error); // for demo purposes only
    return Promise.reject(error.message || error);
  }
}
