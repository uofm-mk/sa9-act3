
require_relative 'vm'

RSpec.describe VendingMachine do
  describe "#initialize" do
    it "initializes the vending machine with 20 bottles" do
      vending_machine = VendingMachine.new
      expect(vending_machine.get_inventory).to eq(20)
    end
  end

  describe "#purchase" do
    it "reduces the inventory by the specified amount" do
      vending_machine = VendingMachine.new
      vending_machine.purchase(5)
      expect(vending_machine.get_inventory).to eq(15)
    end
  end

  describe "#restock" do
    it "increases the inventory by the specified amount" do
      vending_machine = VendingMachine.new
      vending_machine.restock(10)
      expect(vending_machine.get_inventory).to eq(30)
    end
  end

  describe "#get_inventory" do
    it "returns the current inventory" do
      vending_machine = VendingMachine.new
      expect(vending_machine.get_inventory).to eq(20)
    end
  end

  describe "#report" do
    it "prints the current inventory" do
      vending_machine = VendingMachine.new
      expect { vending_machine.report }.to output("Inventory: 20 bottles\n").to_stdout
    end
  end
end
