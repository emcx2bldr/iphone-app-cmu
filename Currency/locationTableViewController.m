//
//  locationTableViewController.m
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import "locationTableViewController.h"
#import "resultViewController.h"

@implementation locationTableViewController

@synthesize currencyArray;
@synthesize countriesPerContinent;
@synthesize selectedPair;

-(id) initWithPair: (pair*) oldPair {
	if (self = [super init])
		self.selectedPair = oldPair;
	
	return self;
}

-(void) searchButtonPressed{

}

#pragma mark -
#pragma mark Initialization

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    if ((self = [super initWithStyle:style])) {
    }
    return self;
}
*/


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSDictionary *eachCurrency;
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"Currency-data" ofType:@"plist"];
	NSMutableArray *rawCurrencyArray = [[NSMutableArray alloc] initWithContentsOfFile:path];
	NSMutableArray *curr = [[NSMutableArray alloc] init];
	
	for (eachCurrency in rawCurrencyArray)
	{
		currency *acurrency = [[currency alloc] initWithDictionary:eachCurrency];
		[curr addObject: acurrency];
	}
	
	self.currencyArray = curr;
	
	[curr release];
	[rawCurrencyArray release];
	// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
	//return (NSInteger)[countriesPerContinent objectAtIndex:section];
	return [self.currencyArray count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
	currency *curr = (currency *)[self.currencyArray objectAtIndex:indexPath.row];
    cell.textLabel.text = curr.name;
	return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	if (self.selectedPair.fromCurrency == nil) {
		currency *fromCurrency = (currency *)[self.currencyArray objectAtIndex: indexPath.row];
		pair *newPair = [[pair alloc] initWithFromCurrency: fromCurrency ToCurrency:nil];
		locationTableViewController *to = [[locationTableViewController alloc] init];
		to.selectedPair = newPair;
		to.title = @"To";
		[self.navigationController pushViewController:to animated:YES];
		[newPair release];
		[to release];
	}
	else
	{
		currency *toCurrency = (currency *)[self.currencyArray objectAtIndex: indexPath.row];
		pair *newPair = [[pair alloc] initWithFromCurrency: self.selectedPair.fromCurrency ToCurrency:toCurrency];
		resultViewController *results = [[resultViewController alloc] init];
		results.selectedPair = newPair;
		results.title = @"Conversion";
		[self.navigationController pushViewController: results animated:YES];
		[newPair release];
		[results release];
	}
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
	[currencyArray release];
	[countriesPerContinent release];
	[selectedPair release];
    [super dealloc];
}


@end

