.class LeV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeF;


# instance fields
.field final synthetic a:LeU;


# direct methods
.method constructor <init>(LeU;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, LeV;->a:LeU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, LeV;->a:LeU;

    iget-object v1, p0, LeV;->a:LeU;

    invoke-static {v1}, LeU;->a(LeU;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, LeU;->a(ZZ)V

    .line 61
    return-void
.end method
