.class Lxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lxj;


# direct methods
.method constructor <init>(Lxj;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lxk;->a:Lxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lxk;->a:Lxj;

    invoke-static {v0}, Lxj;->a(Lxj;)V

    .line 98
    return-void
.end method
