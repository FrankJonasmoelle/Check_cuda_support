import torch

def main():
    cuda_available = torch.cuda.is_available()
    if cuda_available:
        print("CUDA is available on this system.")
    else:
        print("CUDA is not available on this system.")

if __name__ == "__main__":
    main()