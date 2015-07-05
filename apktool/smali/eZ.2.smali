.class LeZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeJ;


# instance fields
.field final synthetic a:LeY;


# direct methods
.method constructor <init>(LeY;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, LeZ;->a:LeY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, LeZ;->a:LeY;

    iget-object v1, p0, LeZ;->a:LeY;

    invoke-static {v1}, LeY;->a(LeY;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, LeY;->a(ZZ)V

    .line 61
    return-void
.end method
