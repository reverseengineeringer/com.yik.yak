.class public LDI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/YikYakDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/YikYakDialog;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, LDI;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, LDI;->a:Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->finish()V

    .line 181
    return-void
.end method
