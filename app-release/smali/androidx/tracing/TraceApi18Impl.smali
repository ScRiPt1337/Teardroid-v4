.class final Landroidx/tracing/TraceApi18Impl;
.super Ljava/lang/Object;
.source "TraceApi18Impl.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
